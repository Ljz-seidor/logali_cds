@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Lab Jerarquia'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZCDS_JERARQUIA_LJZ
  as select from zempl_h_ljz as Employees
  association [1] to ZCDS_JERARQUIA_LJZ as _Manager on _Manager.Employee = Employees.manager 
{
  key employee as Employee,
      manager  as Manager,
      name     as Name,
      
      /* Association */
      _Manager
}
