CLASS zcl_week_1 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS: display IMPORTING iv_display TYPE abap_bool DEFAULT 'X'.
  PROTECTED SECTION.
    METHODS: display_hello_world.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_week_1 IMPLEMENTATION.
  METHOD display_hello_world.
    cl_demo_output=>display( 'Hello World From India' ).
    DATA(dd) = abap_true.
  ENDMETHOD.

  METHOD display.
    IF iv_display = abap_true.
      display_hello_world( ).
    ENDIF.
  ENDMETHOD.

ENDCLASS.
