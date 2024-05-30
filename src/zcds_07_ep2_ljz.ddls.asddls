@EndUserText.label: 'CDS - Entity Projection 2'
@AccessControl.authorizationCheck: #NOT_REQUIRED
define view entity zcds_07_ep2_ljz
  as projection on zcds_05_ap1_ljz
{
  key TravelId,
  key BookingId,
      BookingDate,
      CustomerId,
      CarrierId,
      ConnectionId,
      FlightDate,
      FlightPrice,
      CurrencyCode,
      /* Associations */
      _BookSup : redirected to composition child zcds_08_ep3_ljz,
      _Travel : redirected to parent zcds_06_ep1_ljz
}
