CLASS zcl_week_1 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    DATA: gao_output TYPE REF TO if_oo_adt_classrun_out.

    INTERFACES: if_oo_adt_classrun.

    METHODS: display IMPORTING iv_display TYPE abap_bool DEFAULT 'X'.
  PROTECTED SECTION.
    METHODS: display_hello_world.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_week_1 IMPLEMENTATION.
  METHOD display_hello_world.
    gao_output->write( 'Hello World From India' ).
  ENDMETHOD.

  METHOD display.
    IF iv_display = abap_true.
      display_hello_world( ).
    ENDIF.
  ENDMETHOD.

  METHOD if_oo_adt_classrun~main.
    gao_output = out.
    display(  ).
  ENDMETHOD.

ENDCLASS.

