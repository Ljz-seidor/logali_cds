@EndUserText.label: 'CDS - Entity Projection 3'
@AccessControl.authorizationCheck: #NOT_REQUIRED
define view entity zcds_08_ep3_ljz
  as projection on zcds_05_ap2_ljz
{
  key TravelId,
  key BookingId,
  key BookingSupplementId,
      SupplementId,
      Price,
      CurrencyCode,
      /* Associations */
      _Booking : redirected to parent zcds_07_ep2_ljz,
      _Travel : redirected to zcds_06_ep1_ljz
}
