package com.felipe.IoC.Repositories;

import com.felipe.IoC.Models.Mascota;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
public interface MascotaRepositoryFiltro extends JpaRepository<Mascota,Long>{

    @Query(value="SELECT mascotas.* FROM mascotas,publicacion,ciudades,regiones WHERE regiones.id = ciudades.region_id AND ciudades.id= publicacion.ciudad_id AND mascotas.id = publicacion.mascota_id AND regiones.id= ?1", nativeQuery =true )
    List<Mascota> findAllByRegion(Long regionId);

}
