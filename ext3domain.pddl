
(define (domain redflix)
    (:requirements :adl :typing)
    (:types contenido - item
            dia - item)
    (:functions
      (ordendia ?d - dia)
      (capacitat_restante ?d - dia)
      )

    (:predicates
        (predecesor ?x - contenido ?y - contenido)  ;;x antes que y
        (obj ?x - contenido)
        (visto ?x - contenido)
        (assignaciodia ?x - contenido ?d - dia)
      )


    (:action ver :parameters (?x - contenido ?d - dia)
      :precondition (and (not (visto ?x)) (> (capacitat_restante ?d) 0) (not (exists (?z - contenido)(and (predecesor ?z ?x) (not (visto ?z)))))
                        (forall (?y - contenido ?dy - dia) (imply (and (predecesor ?y ?x) (assignaciodia ?y ?dy)) (and (visto ?y) (< (ordendia ?dy) (ordendia ?d)))))
                        )

      :effect (and (visto ?x) (assignaciodia ?x ?d) (decrease (capacitat_restante ?d) 1))
      )
)
