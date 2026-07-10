MEJORAS VISUALES Y EDITORIALES DEL LIBRO

Este paquete incluye:

1. _quarto.yml
   - Cambia el autor a: MI Jesús Gilberto Rodríguez Escobedo.
   - Agrega licencia en el pie de página.
   - Agrega configuración visual para HTML.
   - Agrega encabezados profesionales para PDF.
   - Incluye el capítulo de licencia y citación.

2. index.qmd
   - Mejora la presentación inicial.
   - Agrega portada visual para la versión web.
   - Actualiza la estructura del libro hasta capítulo 6.

3. 00-licencia-y-citacion.qmd
   - Agrega autoría, licencia Creative Commons y cita sugerida.

4. styles.css
   - Agrega colores azul y turquesa.
   - Mejora encabezados, tablas, bloques de código, portada y navegación.

INSTRUCCIONES

Copia estos archivos en:

C:\libro-machine-learning-r

Reemplaza _quarto.yml e index.qmd cuando Windows pregunte.

Luego ejecuta:

quarto render --to html
type nul > docs\.nojekyll

Después genera el PDF con tu flujo seguro:

quarto render --to pdf
mkdir pdf_temp
copy docs\*.pdf pdf_temp\

quarto render --to html
type nul > docs\.nojekyll

copy pdf_temp\*.pdf docs\

git add .
git commit -m "Mejora portada licencia y estilo visual"
git push

LICENCIA PROPUESTA

Se propone Creative Commons BY-NC-SA 4.0.

Si deseas permitir uso comercial, cambia a CC BY 4.0.
Si deseas impedir adaptaciones, cambia a CC BY-NC-ND 4.0.
