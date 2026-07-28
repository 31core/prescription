# prescription

Esta es una plantilla de receta electrónica escrita con Typst, diseñada para generar recetas de alta calidad de manera rápida y sencilla.

## Why Typst

Dado que Word (.doc, .docx) utiliza formatos binarios que no son convenientes para la gestión con git, y que LaTex (TeX Live) tiene paquetes de instalación voluminosos, una sintaxis redundante y un soporte deficiente para el chino, hemos elegido Typst, una herramienta de composición ligera y con una sintaxis sencilla.

## Usage

La configuración básica requiere modificar las variables correspondientes en `prescription.yaml`, que son:

* `title`: Nombre del hospital
* `name`: Nombre del paciente (se recomienda usar espacios entre los caracteres chinos)
* `gender`: Género, "男" (Hombre) o "女" (Mujer)
* `age`: Edad del paciente
* `diagnosis`: Contenido del diagnóstico
* `doctor`: Nombre del médico
* `amount`: Monto total de los medicamentos
* `medicines`: Lista de medicamentos

Para el formato detallado, consulte los ejemplos en `example.yaml`.

Compilar PDF:

```shell
typst compile prescription.typ --input src=[PATH]
```

Por ejemplo, para compilar el ejemplo de `example.yaml`:
```shell
typst compile prescription.typ --input src=example.yaml
```

## Environment

* Linux: View [[Typst on Repology][repology]](https://repology.org/project/typst/versions)
* macOS: `brew install typst`
* Windows: `winget install --id Typst.Typst`

## Requirement

Este proyecto utiliza las fuentes `Noto Sans CJK SC` y `SimSun`. Asegúrese de tener instaladas estas dos fuentes al compilar. Dado que Typst no arroja errores si faltan fuentes durante la compilación, este problema puede pasar desapercibido fácilmente.
Para garantizar que el formato sea el esperado, si no está seguro de si tiene estas fuentes, puede instalarlas directamente después de clonar este proyecto.

## Sobre la impresión

Imprimir directamente en A5. Para impresión en A4, use un escalado del 70% y luego recorte según las especificaciones de A5.

## TODO List

~~* Integrar un generador de sellos oficiales en el proyecto.~~

## License

<p xmlns:cc="http://creativecommons.org/ns#" xmlns:dct="http://purl.org/dc/terms/"><a property="dct:title" rel="cc:attributionURL" href="https://github.com/31core/prescription">prescription</a> by <a rel="cc:attributionURL dct:creator" property="cc:attributionName" href="https://github.com/31core">31core</a> is licensed under <a href="https://creativecommons.org/licenses/by-nc-sa/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">CC BY-NC-SA 4.0<img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/cc.svg?ref=chooser-v1" alt=""><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/by.svg?ref=chooser-v1" alt=""><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/nc.svg?ref=chooser-v1" alt=""><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/sa.svg?ref=chooser-v1" alt=""></a></p>
