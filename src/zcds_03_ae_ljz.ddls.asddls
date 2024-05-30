@EndUserText.label: 'CDS - Abstract Entity'
define abstract entity zcds_03_ae_ljz
  with parameters pTravel : /dmo/travel_id
{
    travel_id : /dmo/travel_id;
    agency_id : /dmo/agency_id;
    customer_id : /dmo/customer_id;
    begin_date : /dmo/begin_date;
    end_date : /dmo/end_date;
}
