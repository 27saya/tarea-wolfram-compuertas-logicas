inputs={{0, 0}, {0, 1}, {1, 0}, {1, 1}};

targetsAND={{0}, {0}, {0}, {1}};
targetsOR={{0}, {1}, {1}, {1}};
targetsXOR={{0}, {1}, {1}, {0}};

net = NetChain[{
   LinearLayer[2], Tanh,
   LinearLayer[1], LogisticSigmoid
}];

(*Entrenamos para AND*)
trainedAND=NetTrain[net, Thread[inputs -> targetsAND]];

(*Entrenamos para OR*)
trainedOR=NetTrain[net, Thread[inputs -> targetsOR]];

(*Entrenamos para XOR*)
trainedXOR=NetTrain[net, Thread[inputs -> targetsXOR]];


Print["\nRESULTADOS AND: "];
Do[
  Print[input, " -> ", Round[trainedAND[input]]],
  {input, inputs}
];

Print["\nRESULTADOS OR: "];
Do[
  Print[input, " -> ", Round[trainedOR[input]]],
  {input, inputs}
];

Print["\nRESULTADOS XOR: "];
Do[
  Print[input, " -> ", Round[trainedXOR[input]]],
  {input, inputs}
];

