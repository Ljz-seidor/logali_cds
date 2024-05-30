CLASS zcl_ae_travel_ljz DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_AE_TRAVEL_LJZ IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA ls_abstract TYPE zae_travel_ljz.

    ls_abstract-agency_id = '00000008'.
    ls_abstract-travel_id = '000001'.
    ls_abstract-customer_id = 1.

  ENDMETHOD.
ENDCLASS.
