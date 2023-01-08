package com.felipe.IoC.Controllers;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.felipe.IoC.Models.Ciudad;
import com.felipe.IoC.Models.Mascota;
import com.felipe.IoC.Models.Publicacion;
import com.felipe.IoC.Models.Region;
import com.felipe.IoC.Models.User;
import com.felipe.IoC.Services.CiudadService;
import com.felipe.IoC.Services.MascotaService;
import com.felipe.IoC.Services.PublicacionService;
import com.felipe.IoC.Services.RegionService;
import com.felipe.IoC.Services.UserService;

import java.util.List;


@Controller
public class PublicacionController{
    private final PublicacionService publicacionService;
    private final MascotaService mascotaService;
    private final UserService userService;
    private final CiudadService ciudadService;
    private final RegionService regionService;

    public PublicacionController(PublicacionService publicacionService, MascotaService mascotaService, UserService userService, CiudadService ciudadService, RegionService regionService){
        this.publicacionService = publicacionService;
        this.mascotaService = mascotaService;
        this.userService = userService;
        this.ciudadService = ciudadService;
        this.regionService = regionService;
    }
    

    // para ver el crear publicacion get
    @GetMapping("/publicacion")
    public String vercreaPublicacion(@ModelAttribute("publicacion") Publicacion publicacion, Model model){
        List<Mascota> mascotas = mascotaService.findAll();
        model.addAttribute("mascotas", mascotas);
        return "publicacion";
    }
    
    //para crear publicacion  por post(muestra la mascota en lista)
    @PostMapping("/publicacion")
    public String crearPublicacion(@Valid @ModelAttribute("publicacion")Publicacion publicacion, BindingResult result, HttpSession session,Model model){
        if (result.hasErrors()) {
            List<Region> region = regionService.findAll();
            model.addAttribute("region", region);
            List<Ciudad> ciudad = ciudadService.findAll();
            model.addAttribute("ciudad", ciudad);
            List<Mascota> mascotas = mascotaService.findAll();
            model.addAttribute("mascotas", mascotas);
            return "publicacion";
        }else{
            publicacionService.save(publicacion);
            return "redirect:/userdentro";
        }
    }
    
    //para borrar la publicacion
    @GetMapping("/publicacion/{id}/delete")
    public String deletePublic(@PathVariable("id")Long id){
        publicacionService.delete(id);
        return "redirect:/SecondChance";
    }
}
