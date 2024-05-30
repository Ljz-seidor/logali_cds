@EndUserText.label: 'Lab Abstract Entity'
define abstract entity ZAE_Travel_ljz
  with parameters
    @EndUserText.label: 'Status'
    p_status : /dmo/travel_status,
    @EndUserText.label: 'Status'
    p_agency : /dmo/agency_id
{
  travel_id   : /dmo/travel_id;
  agency_id   : /dmo/agency_id;
  customer_id : /dmo/customer_id;
  begin_date  : /dmo/begin_date;
  end_date    : /dmo/end_date;
}
