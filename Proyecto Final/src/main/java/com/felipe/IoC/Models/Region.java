package com.felipe.IoC.Models;

import java.util.List;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;


@NoArgsConstructor
@Setter
@Getter
@Entity
@Table(name = "regiones")
public class Region{

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank
    private String nombre;

    @OneToMany(mappedBy="region", fetch = FetchType.LAZY)
    private List<Ciudad> ciudades;

}
