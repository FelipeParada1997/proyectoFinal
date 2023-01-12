package com.felipe.IoC.Repositories;

import com.felipe.IoC.Models.Mascota;
import com.felipe.IoC.Models.TipoAnimal;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
public interface MascotaRepository extends BaseRepository<Mascota>{

    List<Mascota> findAllByTipoDeAnimal(TipoAnimal tipoAnimal);

}
