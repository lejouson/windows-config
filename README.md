# Configuración de Windows

Inspirado en [dotfiles for Windows de Jay Harris](https://github.com/jayharris/dotfiles-windows) y [config de Mark Otto](https://github.com/mdo/config).

## Ficheros de configuración

Crea enlaces directos a los ficheros del repositorio en las ubicaciones en las que se espera encontrar estos ficheros para añadir:

- Powershell
	- Alias
	- Funciones
	- Prompt
- Configuración de aplicaciohnes
	- EditorConfig
	- Git
	- Vim

Al hacer uso de enlaces, hace que los cambios realizados en los ficheros en sus ubicaciones naturales se reflejen también en los ficheros del repositorio.

Para instalar los enlaces ejecutar el siguiente script con permisos de administrador.

```powershell
> .\Bootstrap.ps1
```

## Aplicaciones

Aplicaciones de uso cotidiano, características de Windows, ficheros de ayuda, etc. Require una instalación operativa de winget (disponible de fábrica en las nuevas versiones de Windows).

Ejecutar con permisos de administrador.

```powershell
> .\Apps.ps1
```

## Tareas pendientes

- [ ] Configuración para Linux

## Más referencias

- https://dotfiles.github.io/
- https://github.com/webpro/awesome-dotfiles