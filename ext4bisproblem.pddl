(define (problem basic) (:domain redflix)
    (:objects SW1 SWR SW2 SW3 HG1 HG2 FG SM CW BM BM2 - contenido
              d1 d2 d3 d4 d5 d6 - dia)
    (:init

        (= (duracion SW1) 120)
        (= (duracion SWR) 80)
        (= (duracion SW2) 100)
        (= (duracion SW3) 110)
        (= (duracion HG1) 50)
        (= (duracion HG2) 60)
        (= (duracion FG) 200)
        (= (duracion BM) 100)
        (= (duracion BM2) 104)
        (= (duracion CW) 83)
        (= (duracion SM) 112)

        (predecesor SW1 SW2)
        (predecesor SW2 SW3)
        (predecesor SWR SW3)
        (predecesor HG1 HG2)
        (predecesor BM BM2)

        (paralelo SM BM2)
        (paralelo CW SM)
        (paralelo SW3 CW)

        (obj SW3)
        (obj HG2)
        (obj FG)
        (obj BM2)

        (= (ordendia d1) 1)
        (= (ordendia d2) 2)
        (= (ordendia d3) 3)
        (= (ordendia d4) 4)
        (= (ordendia d5) 5)
        (= (ordendia d6) 6)

        (= (capacitat_restante d1) 200)
        (= (capacitat_restante d2) 200)
        (= (capacitat_restante d3) 200)
        (= (capacitat_restante d4) 200)
        (= (capacitat_restante d5) 200)
        (= (capacitat_restante d6) 200)

        (anterior d1 d2)
        (anterior d2 d3)
        (anterior d3 d4)
        (anterior d4 d5)
        (anterior d5 d6)

    )

    (:goal (and (forall (?x - contenido) (imply (obj ?x)  (visto ?x)))))
    )
