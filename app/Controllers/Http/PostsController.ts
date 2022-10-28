import { HttpContextContract } from '@ioc:Adonis/Core/HttpContext'

import Post from 'App/Models/Post'
import PostValidator from 'App/Validators/PostValidator'

export default class PostsController
{
    public async index({request, response}: HttpContextContract)
    {
        try
        {
            const page  = request.input('page', 1)
            const limit = request.input('limit', 10)
            const status = request.input('status', false)
            
            const posts = await Post.query().withScopes((scopes) => scopes.statusPosts(status)).paginate(page, limit)
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

    public async store({request, response}: HttpContextContract)
    {
        try
        {
            const payload = await request.validate(PostValidator)
            const posts = await Post.create(payload)

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

    public async show({params, response}: HttpContextContract)
    {
        try
        {
            const { id } = params
            const post = await Post.find(id)

            return response.status(200).json({
                data: post,
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

    public async update({params, request, response}: HttpContextContract)
    {
        try
        {
            const { id } = params
            const payload = await request.validate(PostValidator)

            const post = await Post.findOrFail(id)
            await post.merge(payload).save()

            return response.status(200).json({
                data: post,
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

    public async destroy({params, response}: HttpContextContract)
    {
        try
        {
            const { id } = params

            const post = await Post.findOrFail(id)
            await post.delete()

            return response.status(200).json({
                message: 'Post deleted',
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

    public async trashed({params, response}: HttpContextContract)
    {
        try
        {
            const { id } = params
            const post = await Post.findOrFail(id)
            await post.merge({status: 'Trashed'}).save()

            return response.status(200).json({
                data: post,
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
}
