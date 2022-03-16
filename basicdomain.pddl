(define (domain redflix)
    (:requirements :adl :typing)
    (:types contenido - item
            )
    (:predicates
        (predecesor ?x - contenido ?y - contenido)  ;;x antes que y
        (obj ?x - contenido)
        (visto ?x - contenido)

      )

    (:action ver_predecesor :parameters (?x - contenido ?y - contenido)
        :precondition (and (predecesor ?x ?y) (not (exists (?z - contenido)(and (predecesor ?z ?x) (not (visto ?z))))))
        :effect (visto ?x))

    (:action ver_obj :parameters (?x - contenido )
      :precondition (and (obj ?x) (not (exists (?y - contenido)(and (predecesor ?y ?x) (not (visto ?y))))))
      :effect (visto ?x))
)
