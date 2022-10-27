import { HttpContextContract } from '@ioc:Adonis/Core/HttpContext'

import Post from 'App/Models/Post'

export default class PostsController
{
    public async index({response}: HttpContextContract)
    {
        try
        {
            const posts = await Post.all()
            return response.status(200).json({
                data: posts,
                response: 200
            })    
        }
        catch (error)
        {
            return response.status(500).json({
                message: error.message,
                response: 500
            })
        }
    }

    // public async store({request, response}: HttpContextContract)
    // {
    //     try
    //     {
    //         const posts = await Post.all()
    //         return response.status(200).json({
    //             data: posts,
    //             response: 200
    //         })    
    //     }
    //     catch (error)
    //     {
    //         return response.status(500).json({
    //             message: error.message,
    //             response: 500
    //         })
    //     }
    // }
}
