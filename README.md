# Des-momies-et-des-pyramides
## Description
Le but de ce projet est de réaliser deux modèles 3D : une momie et une pyramide.
La première forme consiste à transformer le labyrinthe en pyramide. Il s’agit d’empiler
des labyrinthes les uns sur les autres avec des tailles de plus en plus petites.
La seconde forme est une momie.Il s’agira de faire tourner un quad-strip autour d’un axe centrale. Le rayon autour de l’axe central variera pour moduler l’épaisseur de la momie (plus gros ventre, moins gros pour le cou, etc.).
Enfin la momie sera ajoutée dans le labyrinthe.

## La momie
Pour faire la momie j'ai d’abords fait les fonctions :
rouleau() : qui fait un ressort en bandes.
rouleaum() : la même chose que rouleau() mais a un argument en plus pour définir le
rapport de le longueur et le diamètre.
arm() : qui dessine un bras en utilisant deux fois la fonction rouleau().
arms() : dessine les deux bras et on peut définir la distance entre ces bras.
eye() : dessine un œil en 3D, en utilisant la fonction createSphere().
head() : qui dessine la tête en utilisant la fonction rouleaum() et en ajoutant deux
yeux avec eye().
corps() : qui dessine le corps avec la fonction rouleau() .
mains() : qui ajoute les mains de la momie.
Et enfin on a fait la fonction momie() qui utilise toute les fonctions précédentes pour
dessiner la momie.
Toutes les fonctions cités si dessus renvois des PShape.
## La pyramide
On utilise la fonction labygen() pour générer les labyrinthes, ensuite on stock 10 labyrinthes de taille de 3 à 21 en ajoutant 2 à chaque fois dans sides3 à sides21.
La fonction pyramid() dessine une pyramide en dessinant les 10 labyrinthes avec la fonction laby() et en faisant une translation verticale de taillecube après chaque labyrinthe dessiné, on a un cube en haut de la pyramide pour la compléter.
La fonction sol() déssine un sol en utilisant l’image sand.jpg .
La fonction funct() prend en argument un labyrinth pour pouvoir le naviguer.
On ferme toutes les entrées et les sorties des labyrinthes sauf l’entrée du premier.
La fonction keyPressed() permet de sortir et entrer dans la pyramide avec la touche ‘l’ du clavier, permet de se déplacer dans le labyrinth en utilisant les flèches du clavier et permet aussi de passé d’un niveau au niveau suivant si on atteint la fin du
labyrinthe.
La fonction notinlab() dessine la pyramide de l’extérieur et le sol.
Et La fonction play() en fonction du niveau déssine le labyrinthe avec la fonction funct().
Finalement j'ai ajouté la momie dans le labyrinthe en modifiant la fonction funct(), j'ai essayé de la déplacer aléatoirement avec la fonction movemomie() mais je n'ai pas réussi 
