package com.felipe.IoC.Services;

import com.felipe.IoC.Models.Imagen;
import com.felipe.IoC.Repositories.BaseRepository;
import com.felipe.IoC.Repositories.ImagenRepository;
import org.springframework.stereotype.Service;

@Service
public class ImagenService extends BaseService<Imagen>{
    
    private final ImagenRepository imagenRespo;

    public ImagenService(BaseRepository<Imagen> baseRepository, ImagenRepository imagenRespo){
        
        super(baseRepository);
        this.imagenRespo = imagenRespo;
    }
}
