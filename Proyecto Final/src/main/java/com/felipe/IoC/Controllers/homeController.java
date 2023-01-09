package com.felipe.IoC.Controllers;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.felipe.IoC.Models.Mascota;
import com.felipe.IoC.Models.User;
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
    
    @GetMapping("/")
    public String home(Model model, HttpSession session){
    /* Long userId = (Long) session.getAttribute("userId");
        User user = userService.findById(userId);
        List<Publicacion> publicaciones = publicacionService.findAll();
        model.addAttribute("user", user);
        model.addAttribute("publicacionesItem", publicaciones); */

        return "home";
    }

    @GetMapping("/userdentro") //GET Mostrar publicaciones
    public String principal(HttpSession session, Model model){
        Long id = (Long)session.getAttribute("userId");
        User user =  userService.findById(id);
        List<Mascota> mascota = mascotaService.findAll();
        model.addAttribute("user", user);
        model.addAttribute("mascota", mascota);
        return "home2";
    }
    // @PostMapping("/userdentro")
    // public String principaluser(Model model, HttpSession session){
    //     return "home2";
    // }

}
