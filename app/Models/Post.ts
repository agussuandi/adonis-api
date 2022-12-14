import { DateTime } from 'luxon'
import { BaseModel, column, scope  } from '@ioc:Adonis/Lucid/Orm'

export default class Post extends BaseModel
{
  public static table = 'm_posts'

  @column({ isPrimary: true })
  public id: number

  @column()
  public title: string;

  @column()
  public content: string;

  @column()
  public category: string;

  @column()
  public status: string;

  @column.dateTime({ autoCreate: true })
  public createdAt: DateTime

  @column.dateTime({ autoCreate: true, autoUpdate: true })
  public updatedAt: DateTime

  public static statusPosts = scope((query, search) => {
    if (search) {
      query.where('status', search)
    }
  })
}
