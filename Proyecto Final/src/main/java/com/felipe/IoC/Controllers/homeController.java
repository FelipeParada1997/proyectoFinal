package com.felipe.IoC.Controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.felipe.IoC.Services.MascotaService;
import com.felipe.IoC.Services.PublicacionService;
import com.felipe.IoC.Services.UserService;

@Controller
public class homeController {
    private final PublicacionService publicacionService;
    private final MascotaService mascotaService;
    private final UserService userService;

    public homeController(PublicacionService publicacionService, MascotaService mascotaService, UserService userService){
        this.publicacionService = publicacionService;
        this.mascotaService = mascotaService;
        this.userService = userService;
    }
    
    @GetMapping("/principal") //GET Mostrar publicaciones
    public String principal(){
    // (@PathVariable("id")Long id, Model model){
    //     model.addAttribute("user",userService.findById(id));
    //     model.addAttribute("publicacion", publicacionService.findById(id));
    //     model.addAttribute("mascota", mascotaService.findById(id));
        return "home2.jsp";
    }
}
