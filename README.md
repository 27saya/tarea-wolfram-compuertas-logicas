# RNA que soluciona las compuertas logicas AND, OR Y XOR
1. Explicación del codigo y funciones usadas.
   
   - Inputs y targets:

     <img width="339" height="100" alt="imagen_2025-08-28_233023130" src="https://github.com/user-attachments/assets/8e09bc40-00e5-4a87-8df1-e109f7a2662b" />

   Con los inputs, nos referimos a las combinaciones posibles de dos bits. Mientras que con los targets, definimos las respuestas que queremos que aprenda la red para cada compuerta.


   - La red neuronal (NetChain, LinearLayer, Tanh y LogisticSigmoid):

     <img width="278" height="79" alt="imagen_2025-08-28_233436280" src="https://github.com/user-attachments/assets/106e445b-3c1f-4e6f-8000-209ae309a983" />

      - NetChain: Une varias capas una tras otra.
      - LinearLayer[2]: Capa oculta con 2 neuronas (se encarga de mezclar la información).
      - Tanh: Función que hace que los valores se mantengan entre -1 y 1.
      - LinearLayer[1]: Salida con una sola neurona (la respuesta final).
      - LogisticSigmoid: Convierte la salida a un valor entre 0 y 1, es ideal para respuestas de si y no.

   - El entrenamiento:

     <img width="453" height="110" alt="imagen_2025-08-28_233936616" src="https://github.com/user-attachments/assets/d830c020-f558-45db-bad6-f4a8099aa640" />

       - NetTrain: Enseña a la red comparando sus respuestas con las deseadas.
       - Thread[]: Empareja cada entrada con la salida correspondiente.
       - Esto se repite para AND, OR Y XOR, obteniendo al final 3 redes distintas que aprendieron ya su compuerta.

   - Mostrar los resultados:

     <img width="396" height="323" alt="imagen_2025-08-28_234431378" src="https://github.com/user-attachments/assets/01b18efc-31b7-4d5a-8d9c-019d68d2b197" />

       - Do: Recorre todas las entradas posibles.
       - trainedAND[input]: La red hace su predicción del resultado.
       - Round: Redondea ese resultado a 0 o 1 (para que sea fiel a la tabla de verdad de la compuerta correspondiente, ya que el resultado arrojado por la red no es exacto).
       - Repite el proceso con OR y XOR para compararlo todo.


2. Como ejecutar el archivo.wl?:

   Para poder ejecutar el entrenamiento y la red neuronal, se necesita tener instalado el Wolfram Engine o el wolframscript, ambos descargables gratis en la pagina oficial de Wolfram. Una vez hecho esto, desde Command Prompt ejecutamos el siguiente comando:

   <img width="130" height="22" alt="Screenshot 2025-08-28 235503" src="https://github.com/user-attachments/assets/e82a75dd-6d76-41ea-8bf9-04bfd4322d3c" />

   Si la instalación salio bien, la consola deberia imprimir lo siguiente:

   <img width="557" height="76" alt="imagen_2025-08-28_235644915" src="https://github.com/user-attachments/assets/1780be74-04ab-4737-b448-b6cdfe795c54" />

   Una vez verificado, guardamos el archivo rnacompuertas.wl en la carpeta que el Command Prompt este analizando para asegurarnos de que no ocurra ningun error al momento de ejecutarlo. Con el archivo ya guardado, solo ejecutamos el siguiente comando en la consola:

   <img width="335" height="23" alt="imagen_2025-08-28_235955518" src="https://github.com/user-attachments/assets/09a4f74b-2862-484f-accb-6ce0e8dd613b" />



   


     

