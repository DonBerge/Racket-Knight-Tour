# Racket Knight's Tour problem

<p align="center">
  <img src="example.gif" alt="Example">
</p>

Program made in Racket that shows a [Knight's tour](https://es.wikipedia.org/wiki/Problema_del_caballo) on a given N x N chessboard.

The path is calculated using a C++ program, which uses the [Warnsdorff’s algorithm](https://www.geeksforgeeks.org/warnsdorffs-algorithm-knights-tour-problem/).
The generated Knight's Tour is then used by Racket to graph a solution to the problem.

The size of the board varies between 5x5 and 30x30.

---

# Problema del caballo en Racket

<p align="center">
  <img src="example.gif" alt="Ejemplo">
</p>

Programa hecho en Racket que muestra una posible solución del [Problema del caballo](https://es.wikipedia.org/wiki/Problema_del_caballo) para un tablero de N x N casillas.

El recorrido a seguir se calcula utilizando un programa en C++, el cual utiliza el [Algoritmo de Warnsdorff](https://www.geeksforgeeks.org/warnsdorffs-algorithm-knights-tour-problem/).
Los datos generados por dicho programa luego son usados por Racket para graficar una solución del problema.

El tamaño del tablero puede variar entre 5x5 y 30x30.
