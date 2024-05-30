@EndUserText.label: 'Lab Projection 02 Booking'
@AccessControl.authorizationCheck: #NOT_REQUIRED
define view entity ZC_02_Booking_ljz
  as projection on ZI_04_Booking_LJZ
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
      _Supplement : redirected to composition child ZC_03_BSupl_ljz,
      _Travel : redirected to parent ZC_01_Travel_LJZ
}
