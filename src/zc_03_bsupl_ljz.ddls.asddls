@EndUserText.label: 'Lab Projection 03 Supplement'
@AccessControl.authorizationCheck: #NOT_REQUIRED
define view entity ZC_03_BSupl_ljz
  as projection on ZI_05_BSUPL_LJZ
{
  key TravelId,
  key BookingId,
  key BookingSupplementId,
      SupplementId,
      Price,
      CurrencyCode,
      
      /* Associations */
      _Booking : redirected to parent ZC_02_Booking_ljz,
      _Travel : redirected to  ZC_01_Travel_LJZ
}
