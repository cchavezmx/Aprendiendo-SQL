
const Card = ({ movie }) => {
    const { id, title, director, year, length_minutes, imagen = 'https://www.ecartelera.com/carteles/4100/4190/001.jpg' } = movie
    
    return (        
    <div className="flex h-fit mt-2 mb-2 self-center shadow-inner">
        <div key={id} className="rounded-lg flex w-[40rem] h-fit shadow-md relative">
            <picture className="h-64 overflow-hidden shadow-md ">
                <img src={imagen} className="w-64 h-64 object-cover" alt={title}/>
            </picture>
            <div className="p-3">
                <h2 className="text-2xl">{title}</h2>
                <p className="text-xl text-gray-400">{length_minutes} min / {year}</p>
                <p className="w-auto mt-4">
                    Lorem ipsum dolor sit amet consectetur adipisicing elit.
                    Quisquam, quod. Quisquam, quod. Quisquam, quod. Quisquam, quod.
                    Quisquam, quod. Quisquam, quod. Quisquam, quod. Quisquam, quod.
                </p>                
            </div>
            <div className="absolute bottom-4 right-4">
                <p className="text-xl">Director: {director}</p>
            </div>            
        </div>
        {/* <div className='flex flex-col gap-2 items-center rounded-sm w-64 h-64 place-content-center shadow-md p-4'>
            
      </div> */}
    </div>
    )

}

export default Card
