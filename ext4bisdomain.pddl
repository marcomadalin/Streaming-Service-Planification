(define (domain redflix)
    (:requirements :adl :typing :equality)
    (:types contenido - item
            dia - item)
    (:functions
      (ordendia ?d - dia)
      (capacitat_restante ?d - dia)
      (duracion ?x - contenido))

      (:predicates
          (predecesor ?x - contenido ?y - contenido)  ;;x antes que y
          (paralelo ?x - contenido ?y - contenido) ;;x paralelo a y
          (obj ?x - contenido)
          (visto ?x - contenido)
          (assignaciodia ?x - contenido ?d - dia)
          (anterior ?d1 - dia ?d2 - dia)
        )


      (:action ver :parameters (?x - contenido ?d - dia)
        :precondition (and (not (visto ?x)) (>= (capacitat_restante ?d) (duracion ?x))
                      (not (exists (?z - contenido)(and (predecesor ?z ?x) (not (visto ?z)))))
                      (not (exists (?z - contenido)(and (paralelo ?z ?x) (not (visto ?z)))))
                      (forall (?y - contenido ?dy - dia) (imply (and (predecesor ?y ?x) (assignaciodia ?y ?dy)) (and (visto ?y) (< (ordendia ?dy) (ordendia ?d)))))
                      (forall (?y - contenido ?dy - dia) (imply (and (paralelo ?y ?x) (assignaciodia ?y ?dy)) (and (visto ?y) (or (= (ordendia ?dy) (ordendia ?d)) (anterior ?dy ?d)))))
                      )

        :effect (and (visto ?x) (assignaciodia ?x ?d) (decrease (capacitat_restante ?d) (duracion ?x)))
        )

)
