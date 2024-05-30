@EndUserText.label: 'CDS - Entity Projection 1'
@AccessControl.authorizationCheck: #NOT_REQUIRED
define root view entity zcds_06_ep1_ljz
  as projection on zcds_04_re_ljz
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
      _Booking : redirected to composition child zcds_07_ep2_ljz,
      _Customer
}
