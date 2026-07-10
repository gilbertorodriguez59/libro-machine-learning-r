REPARACIÓN VISUAL E ÍNDICE - LIBRO MACHINE LEARNING R

Este paquete corrige:
1. Numeración del índice.
2. Presentación y licencia sin numerar.
3. Nombre completo del autor.
4. Carga correcta de styles.css.
5. Desactivación de code-tools para evitar que aparezca texto fuente extra en la web.
6. Paleta visual para gráficas mediante util_graficas.R.

INSTRUCCIONES

1. Copia estos archivos en C:\libro-machine-learning-r y reemplaza los existentes:
   - _quarto.yml
   - index.qmd
   - 00-licencia-y-citacion.qmd
   - styles.css
   - util_graficas.R

2. Borra resultados anteriores:
   rmdir /s /q docs
   rmdir /s /q _freeze
   rmdir /s /q .quarto

3. Regenera HTML:
   quarto render --to html
   type nul > docs\.nojekyll

4. Sube a GitHub:
   git add .
   git commit -m "Corrige indice estilos y portada"
   git push

Si GitHub rechaza por historial:
   git push -u origin main --force
