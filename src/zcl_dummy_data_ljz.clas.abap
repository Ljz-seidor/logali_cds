CLASS zcl_dummy_data_ljz DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_DUMMY_DATA_LJZ IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

*    data: lt_results TYPE TABLE of zemployee_ljz.
*
*          lt_results = value #(
*                                ( id = '11UX' name = 'Lorena')
*                                ( id = '12UX' name = 'Rosa')
*                              ).
*
*        modify zemployee_ljz from table @lt_results.
*
*        if sy-subrc EQ 0.
*            out->write( 'Data Inserted' ).
*        ENDIF.

    DATA: lt_results TYPE TABLE OF zempl_h_ljz.

    lt_results = VALUE #(
                          ( employee = 1 manager = '' name = 'Nombre 1')
                          ( employee = 2 manager = 1 name = 'Nombre 2')
                          ( employee = 3 manager = '' name = 'Nombre 3')
                          ( employee = 4 manager = 2 name = 'Nombre 4')
                          ( employee = 5 manager = 2 name = 'Nombre 5')
                          ( employee = 6 manager = '' name = 'Nombre 6')
                          ( employee = 7 manager = 1 name = 'Nombre 7')
                          ( employee = 8 manager = 2 name = 'Nombre 8')

                        ).

*    MODIFY zemployee_ljz FROM TABLE @lt_results.

    MODIFY zempl_h_ljz FROM TABLE @lt_results.

    IF sy-subrc EQ 0.
      out->write( 'Data Inserted' ).
    ENDIF.

  ENDMETHOD.
ENDCLASS.
