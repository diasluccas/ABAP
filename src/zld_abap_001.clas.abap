CLASS zld_abap_001 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zld_abap_001 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  DATA variable TYPE string.

  variable = 'Hello World'.

  out->write( variable ).

  DATA(variable2) = 15.

  DATA(variable3) = 17.

  DATA(ergebnis) = variable2 + variable3.

  out->write( ergebnis ).

  IF ergebnis > 20.
    out->write( 'Ergebnis > 20' ).
  ELSE.
    out->write( 'Ergebnis < 20' ).
  ENDIF.

  DATA(string) = 'TEST'.

  CASE string.
    WHEN 'TEST'.
        out->write( 'TEST' ).
    WHEN OTHERS.
        out->write( 'Others' ).
  ENDCASE.

  DATA flights TYPE TABLE OF /dmo/flight.
  DATA flights2 LIKE LINE OF flights.

  flights2-carrier_id = 'LH'.
  flights2-connection_id = '0402'.
  flights2-flight_date = '20251125'.

  out->write( flights ).

  APPEND flights2 TO flights.

  out->write( flights ).

  flights2-carrier_id = 'AA'.
  APPEND flights2 TO flights.

  out->write( flights ).

  flights2-carrier_id = 'XY'.
  APPEND flights2 TO flights.

  out->write( flights ).







  ENDMETHOD.
ENDCLASS.
