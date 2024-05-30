@EndUserText.label: 'Lab Projection 01 Travel'
@AccessControl.authorizationCheck: #NOT_REQUIRED
define root view entity ZC_01_Travel_LJZ
  as projection on ZI_03_Travel_LJZ
{
  key TravelId,
      AgencyId,
      CustomerId,
      BeginDate,
      EndDate,
      BookingFee,
      TotalPrice,
      CurrencyCode,
      Description,
      Status,
      Createdby,
      Createdat,
      Lastchangedby,
      Lastchangedat,
      /* Associations */
      _Agency,
      _Booking : redirected to composition child ZC_02_Booking_ljz,
      _Customer
}
