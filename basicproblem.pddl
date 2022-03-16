(define (problem basic) (:domain redflix)
    (:objects SW1  SW2 SW3 HG1 HG2 forrest_gump - contenido
              )
    (:init
        (predecesor SW1 SW2)
        (predecesor SW2 SW3)

        (predecesor HG1 HG2)
        (obj forrest_gump)
        (obj SW3)
        (obj HG2)


    )

    (:goal (and (forall (?x - contenido) (imply (obj ?x)  (visto ?x)))))

)
