(define (problem basic) (:domain redflix)
    (:objects SW1 SW3r SW2 SW3 HG1 HG2 FG - contenido
              d1 d2 d3 - dia)
    (:init
        (predecesor SW1 SW2)
        (predecesor SW2 SW3)
        (predecesor SW3r SW3)
        (predecesor HG1 HG2)



        (obj SW3)
        (obj HG2)
        (obj FG)

        (= (ordendia d1) 1)
        (= (ordendia d2) 2)
        (= (ordendia d3) 3)


    )

    (:goal (and (forall (?x - contenido) (imply (obj ?x)  (visto ?x)))))
    )
