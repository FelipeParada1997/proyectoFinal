package com.felipe.IoC.Controllers;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;

import com.felipe.IoC.Models.Mascota;
import com.felipe.IoC.Models.User;
import com.felipe.IoC.Services.MascotaService;
import com.felipe.IoC.Services.PublicacionService;
import com.felipe.IoC.Services.UserService;

public class mascotaaController {
    private final MascotaService mascotaService;
    private final UserService userService;
    private final PublicacionService publicacionService;

    public mascotaaController(PublicacionService publicacionService, MascotaService mascotaService, UserService userService){
        this.publicacionService = publicacionService;
        this.mascotaService = mascotaService;
        this.userService = userService;
        }

    //mostrar todas las mescotas asociacdas al usuario


    //para ver una mascota en especifico
    @GetMapping("/mascota/{id}")
    public String verUnaMascota(@PathVariable("id")Long id, Model model){
        Mascota mascota = mascotaService.findById(id);
        model.addAttribute("mascota", mascota);
        return "mascotaver.jsp";
    }
    //para ver formulario para agregar mascotas
    @GetMapping("/agregar")
    public String verFormulario(@ModelAttribute("mascota")Mascota mascota){
        return "agregarmascota.jsp";
    }
    //para rellenar formulario
    // @PostMapping("/agregar")
    // public String hacerFormuario(@Valid @ModelAttribute("mascota")Mascota mascota, BindingResult result, HttpSession session){
    //     if (result.hasErrors()) {
    //         return "agregarmascota.jsp";
    //     }else{
    //         Long userId = (Long)session.getAttribute("userId");
    //         User user = userService.findById(userId);
    //         mascota.setUser(user);
    //         mascotaService.save(mascota);
    //         return "redirect:/publicacion";
    //     }
    // }
    @PostMapping("/agregar")
    public String crearMascot(@Valid @ModelAttribute("mascota") Mascota mascota, BindingResult result) {
        if (result.hasErrors()) {
            return "agregarmascota.jsp";
        } else {
            mascotaService.save(mascota);
            return "redirect:/books";
        }
    }
    //para editar info de mascota ver
   //para editar una reserva ya hecha
    @GetMapping("/mascota/{id}/edit")
    public String editMascota(@PathVariable("id")Long id, Model model){
        Mascota mascota = mascotaService.findById(id);
        model.addAttribute("mascota", mascota);
        return "edit.jsp";
    }
    @PutMapping("/mascota/{id}/edit")
    public String editarMascota(@Valid @ModelAttribute("mascota") Mascota mascota,BindingResult result, HttpSession session){
        if (result.hasErrors()) {
            return "edit.jsp";
        }else{
    Long mascotaId = (Long)session.getAttribute("mascotaId");
            User user = userService.findById(mascotaId);
            mascota.setUser(user);
            mascotaService.save(mascota);
            return "redirect:/mismascotas"; 
        }
    }
    //para editar post info

    //para borrar mascota con notificaicon incluida

}

