# RNA que soluciona las compuertas logicas AND, OR Y XOR
1. Explicación del codigo y funciones usadas.
   
   - Inputs y targets:

     <img width="339" height="100" alt="imagen_2025-08-28_233023130" src="https://github.com/user-attachments/assets/8e09bc40-00e5-4a87-8df1-e109f7a2662b" />

   Con los inputs, nos referimos a las combinaciones posibles de dos bits. Mientras que con los targets, definimos las respuestas que queremos que aprenda la red para cada compuerta.


   - La red neuronal (NetChain, LinearLayer, Tanh y LogisticSigmoid):

     <img width="278" height="79" alt="imagen_2025-08-28_233436280" src="https://github.com/user-attachments/assets/106e445b-3c1f-4e6f-8000-209ae309a983" />

   NetChain: Une varias capas una tras otra.
   LinearLayer[2]: Capa oculta con 2 neuronas (se encarga de mezclar la información).
   Tanh: Función que hace que los valores se mantengan entre -1 y 1.
   LinearLayer[1]: Salida con una sola neurona (la respuesta final).
   LogisticSigmoid: Convierte la salida a un valor entre 0 y 1, es ideal para respuestas de si y no.
   


     

