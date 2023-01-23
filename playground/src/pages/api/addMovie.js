// Next.js API route support: https://nextjs.org/docs/api-routes/introduction
import { PrismaClient } from '@prisma/client'
export const prismaDB = new PrismaClient()

export default function handler(req, res) {
    const data = req.body
    if (req.method === 'POST') {        
        const newMovie = prismaDB.movies.create({
            data
        })
        
        newMovie
        .then((data) => res.status(200).json(data))
        .catch((err) => res.status(500).json(err))
        
    }
}
