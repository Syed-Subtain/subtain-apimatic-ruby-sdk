# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # The `UnionTypeLookUp` class serves as a utility class for
  # storing and managing type combinator templates. It acts as a container for the templates
  # used in handling various oneof/anyof instances within the sdk.
  class UnionTypeLookUp
    include CoreLibrary
    # rubocop:disable Lint/RedundantCopDisableDirective, Style/HashSyntax, Layout/FirstArgumentIndentation
    def self.union_types
      {
        :UpdateCouponBody => OneOf.new(
          [
            LeafType.new(CreateOrUpdateCoupon)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :CreateCouponBody => OneOf.new(
          [
            LeafType.new(CreateOrUpdateCoupon)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :CreateComponentBody => OneOf.new(
          [
            LeafType.new(CreateMeteredComponent),
            LeafType.new(CreateQuantityBasedComponent),
            LeafType.new(CreateOnOffComponent),
            LeafType.new(CreatePrepaidComponent),
            LeafType.new(CreateEBBComponent)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :ListAllComponentPricePointsInputDirection => OneOf.new(
          [
            LeafType.new(SortingDirection)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :ListCustomersInputDirection => OneOf.new(
          [
            LeafType.new(SortingDirection)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :ListMetadataInputDirection => OneOf.new(
          [
            LeafType.new(SortingDirection)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :ListMetafieldsInputDirection => OneOf.new(
          [
            LeafType.new(SortingDirection)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :ReadMrrMovementsInputDirection => OneOf.new(
          [
            LeafType.new(SortingDirection)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :ListAllProductPricePointsInputDirection => OneOf.new(
          [
            LeafType.new(SortingDirection)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :ListSubscriptionsInputDirection => OneOf.new(
          [
            LeafType.new(SortingDirection)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :ListSubscriptionComponentsInputDirection => OneOf.new(
          [
            LeafType.new(SortingDirection)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :ListSubscriptionComponentsForSiteInputDirection => OneOf.new(
          [
            LeafType.new(SortingDirection)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :ProductExpirationIntervalUnitCase0 => OneOf.new(
          [
            LeafType.new(ExtendedIntervalUnit)
          ]
        ),

        :ProductExpirationIntervalUnit => OneOf.new(
          [
            OneOf.new(
          [
            LeafType.new(ExtendedIntervalUnit)
          ]
        )
          ],
          UnionTypeContext.new(
            is_optional: true,
            is_nullable: true
          )
        ),

        :ProductIntervalUnit => OneOf.new(
          [
            LeafType.new(IntervalUnit)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :ProductTrialIntervalUnitCase0 => OneOf.new(
          [
            LeafType.new(IntervalUnit)
          ]
        ),

        :ProductTrialIntervalUnit => OneOf.new(
          [
            OneOf.new(
          [
            LeafType.new(IntervalUnit)
          ]
        )
          ],
          UnionTypeContext.new(
            is_optional: true,
            is_nullable: true
          )
        ),

        :SubscriptionCancellationMethod => OneOf.new(
          [
            LeafType.new(CancellationMethod)
          ],
          UnionTypeContext.new(
            is_optional: true,
            is_nullable: true
          )
        ),

        :SubscriptionPaymentCollectionMethod => OneOf.new(
          [
            LeafType.new(PaymentCollectionMethod)
          ],
          UnionTypeContext.new(
            is_optional: true,
            is_nullable: true
          )
        ),

        :SubscriptionGroup2 => OneOf.new(
          [
            LeafType.new(SubscriptionGroupInlined)
          ],
          UnionTypeContext.new(
            is_optional: true,
            is_nullable: true
          )
        ),

        :CustomerErrorResponseErrors => OneOf.new(
          [
            LeafType.new(CustomerError),
            LeafType.new(String, UnionTypeContext.new(
              is_array: true
            ))
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :CreateMetafieldsRequestMetafields => AnyOf.new(
          [
            LeafType.new(CreateMetafield),
            LeafType.new(CreateMetafield, UnionTypeContext.new(
              is_array: true
            ))
          ]
        ),

        :MetafieldEnum => OneOf.new(
          [
            LeafType.new(String, UnionTypeContext.new(
              is_array: true
            ))
          ],
          UnionTypeContext.new(
            is_array: true,
            is_optional: true,
            is_nullable: true
          )
        ),

        :CouponCompoundingStrategyCase0 => OneOf.new(
          [
            LeafType.new(CompoundingStrategy)
          ]
        ),

        :CouponCompoundingStrategy => AnyOf.new(
          [
            OneOf.new(
          [
            LeafType.new(CompoundingStrategy)
          ]
        )
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :CreateOrUpdateCouponCoupon => OneOf.new(
          [
            LeafType.new(CreateOrUpdatePercentageCoupon),
            LeafType.new(CreateOrUpdateFlatAmountCoupon)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :CreateOrUpdatePercentageCouponPercentage => OneOf.new(
          [
            LeafType.new(Float),
            LeafType.new(String)
          ]
        ),

        :CreateOrUpdatePercentageCouponCompoundingStrategy => OneOf.new(
          [
            LeafType.new(CompoundingStrategy)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :EventEventSpecificData => OneOf.new(
          [
            LeafType.new(SubscriptionProductChange),
            LeafType.new(SubscriptionStateChange),
            LeafType.new(PaymentRelatedEvents),
            LeafType.new(RefundSuccess),
            LeafType.new(ComponentAllocationChange),
            LeafType.new(MeteredUsage),
            LeafType.new(PrepaidUsage),
            LeafType.new(DunningStepReached),
            LeafType.new(InvoiceIssued),
            LeafType.new(PendingCancellationChange),
            LeafType.new(PrepaidSubscriptionBalanceChanged),
            LeafType.new(ProformaInvoiceIssued),
            LeafType.new(SubscriptionGroupSignupSuccess),
            LeafType.new(SubscriptionGroupSignupFailure),
            LeafType.new(CreditAccountBalanceChanged),
            LeafType.new(PrepaymentAccountBalanceChanged),
            LeafType.new(PaymentCollectionMethodChanged),
            LeafType.new(ItemPricePointChanged),
            LeafType.new(CustomFieldValueChange)
          ],
          UnionTypeContext.new(
            is_nullable: true
          )
        ),

        :UpdateMetafieldsRequestMetafields => AnyOf.new(
          [
            LeafType.new(UpdateMetafield),
            LeafType.new(UpdateMetafield, UnionTypeContext.new(
              is_array: true
            ))
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :CreateOrUpdateFlatAmountCouponCompoundingStrategy => OneOf.new(
          [
            LeafType.new(CompoundingStrategy)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :PriceStartingQuantity => OneOf.new(
          [
            LeafType.new(Integer),
            LeafType.new(String)
          ]
        ),

        :PriceEndingQuantity => OneOf.new(
          [
            LeafType.new(Integer),
            LeafType.new(String)
          ],
          UnionTypeContext.new(
            is_optional: true,
            is_nullable: true
          )
        ),

        :PriceUnitPrice => OneOf.new(
          [
            LeafType.new(Float),
            LeafType.new(String)
          ]
        ),

        :ComponentCustomPricePricingScheme => OneOf.new(
          [
            LeafType.new(PricingScheme)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :SubscriptionGroupCreditCardFullNumber => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Integer)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :SubscriptionGroupCreditCardExpirationMonth => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Integer)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :SubscriptionGroupCreditCardExpirationYear => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Integer)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :SubscriptionGroupSignupComponentComponentId => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Integer)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :SubscriptionGroupSignupComponentAllocatedQuantity => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Integer)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :SubscriptionGroupSignupComponentUnitBalance => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Integer)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :SubscriptionGroupSignupComponentPricePointId => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Integer)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :MeteredComponentPricingScheme => OneOf.new(
          [
            LeafType.new(PricingScheme)
          ]
        ),

        :MeteredComponentUnitPrice => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Float)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :SubscriptionGroupComponentCustomPricePricingScheme => OneOf.new(
          [
            LeafType.new(PricingScheme)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :CustomPriceUsedForSubscriptionCreateUpdatePriceInCents => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Integer)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :CustomPriceUsedForSubscriptionCreateUpdateInterval => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Integer)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :CustomPriceUsedForSubscriptionCreateUpdateIntervalUnit => OneOf.new(
          [
            LeafType.new(IntervalUnit)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :CustomPriceUsedForSubscriptionCreateUpdateTrialPriceInCents => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Integer)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :CustomPriceUsedForSubscriptionCreateUpdateTrialInterval => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Integer)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :CustomPriceUsedForSubscriptionCreateUpdateTrialIntervalUnit => OneOf.new(
          [
            LeafType.new(IntervalUnit)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :CustomPriceUsedForSubscriptionCreateUpdateInitialChargeInCents => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Integer)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :CustomPriceUsedForSubscriptionCreateUpdateExpirationInterval => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Integer)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :CustomPriceUsedForSubscriptionCreateUpdateExpirationIntervalUnit => OneOf.new(
          [
            LeafType.new(IntervalUnit)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :CalendarBillingSnapDay => OneOf.new(
          [
            LeafType.new(Integer),
            LeafType.new(String)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :QuantityBasedComponentPricingScheme => OneOf.new(
          [
            LeafType.new(PricingScheme)
          ]
        ),

        :QuantityBasedComponentUnitPrice => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Float)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :OnOffComponentPricingScheme => OneOf.new(
          [
            LeafType.new(PricingScheme)
          ]
        ),

        :OnOffComponentUnitPrice => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Float)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :PricePointExpirationIntervalUnit => OneOf.new(
          [
            LeafType.new(IntervalUnit)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :CreateComponentPricePointsRequestPricePoints => AnyOf.new(
          [
            LeafType.new(CreateComponentPricePoint),
            LeafType.new(CreatePrepaidUsageComponentPricePoint)
          ],
          UnionTypeContext.new(
            is_array: true
          )
        ),

        :CreatePaymentProfileExpirationMonth => OneOf.new(
          [
            LeafType.new(Integer),
            LeafType.new(String)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :CreatePaymentProfileExpirationYear => OneOf.new(
          [
            LeafType.new(Integer),
            LeafType.new(String)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :PrepaidUsageComponentPricingScheme => OneOf.new(
          [
            LeafType.new(PricingScheme)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :PrepaidUsageComponentUnitPrice => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Float)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :PrepaidUsageComponentExpirationIntervalUnit => OneOf.new(
          [
            LeafType.new(IntervalUnit)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :OveragePricingPricingScheme => OneOf.new(
          [
            LeafType.new(PricingScheme)
          ]
        ),

        :EBBComponentPricingScheme => OneOf.new(
          [
            LeafType.new(PricingScheme)
          ]
        ),

        :EBBComponentUnitPrice => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Float)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :CreateComponentPricePointRequestPricePoint => AnyOf.new(
          [
            LeafType.new(CreateComponentPricePoint),
            LeafType.new(CreatePrepaidUsageComponentPricePoint)
          ]
        ),

        :CreatePrepaidUsageComponentPricePointExpirationIntervalUnit => OneOf.new(
          [
            LeafType.new(IntervalUnit)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :RefundConsolidatedInvoiceSegmentUids => OneOf.new(
          [
            LeafType.new(String, UnionTypeContext.new(
              is_array: true
            )),
            LeafType.new(String)
          ]
        ),

        :InvoiceLineItemComponentCostData2 => OneOf.new(
          [
            LeafType.new(InvoiceLineItemComponentCostData)
          ],
          UnionTypeContext.new(
            is_optional: true,
            is_nullable: true
          )
        ),

        :ComponentCostDataPricingScheme => OneOf.new(
          [
            LeafType.new(PricingScheme)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :ReadPaymentProfileResponsePaymentProfile => OneOf.new(
          [
            LeafType.new(BankAccountPaymentProfile),
            LeafType.new(CreditCardPaymentProfile)
          ]
        ),

        :RefundSegmentUids => OneOf.new(
          [
            LeafType.new(String, UnionTypeContext.new(
              is_array: true
            )),
            LeafType.new(String)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :RefundInvoiceRequestRefund => AnyOf.new(
          [
            LeafType.new(RefundInvoice),
            LeafType.new(RefundConsolidatedInvoice)
          ]
        ),

        :ApplyPaymentEventDataPaymentMethod => OneOf.new(
          [
            LeafType.new(PaymentMethodApplePayType),
            LeafType.new(PaymentMethodBankAccountType),
            LeafType.new(PaymentMethodCreditCardType),
            LeafType.new(PaymentMethodExternalType),
            LeafType.new(PaymentMethodPaypalType)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :CreateMultiInvoicePaymentAmount => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Float)
          ]
        ),

        :RemovePaymentEventDataPaymentMethod => OneOf.new(
          [
            LeafType.new(PaymentMethodApplePayType),
            LeafType.new(PaymentMethodBankAccountType),
            LeafType.new(PaymentMethodCreditCardType),
            LeafType.new(PaymentMethodExternalType),
            LeafType.new(PaymentMethodPaypalType)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :CreateInvoicePaymentAmount => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Float)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :InvoiceEventEventData => AnyOf.new(
          [
            LeafType.new(ApplyCreditNoteEventData),
            LeafType.new(ApplyDebitNoteEventData),
            LeafType.new(ApplyPaymentEventData),
            LeafType.new(ChangeInvoiceCollectionMethodEventData),
            LeafType.new(IssueInvoiceEventData),
            LeafType.new(RefundInvoiceEventData),
            LeafType.new(RemovePaymentEventData),
            LeafType.new(VoidInvoiceEventData),
            LeafType.new(VoidInvoiceEventData1)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :InvoiceEvent1PaymentMethod => OneOf.new(
          [
            LeafType.new(PaymentMethodApplePayType),
            LeafType.new(PaymentMethodBankAccountType),
            LeafType.new(PaymentMethodCreditCardType),
            LeafType.new(PaymentMethodExternalType),
            LeafType.new(PaymentMethodPaypalType)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :UsageQuantity => OneOf.new(
          [
            LeafType.new(Integer),
            LeafType.new(String)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :CreateSubscriptionComponentComponentId => OneOf.new(
          [
            LeafType.new(Integer),
            LeafType.new(String)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :CreateSubscriptionComponentPricePointId => OneOf.new(
          [
            LeafType.new(Integer),
            LeafType.new(String)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :SubscriptionComponentPricePointType => OneOf.new(
          [
            LeafType.new(PricePointType)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :ComponentSPricePointAssignmentPricePoint => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Integer)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :CreateAllocationPricePointId => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Integer)
          ],
          UnionTypeContext.new(
            is_optional: true,
            is_nullable: true
          )
        ),

        :AllocationPayment2 => OneOf.new(
          [
            LeafType.new(AllocationPayment)
          ],
          UnionTypeContext.new(
            is_optional: true,
            is_nullable: true
          )
        ),

        :CreateSubscriptionComponents => OneOf.new(
          [
            LeafType.new(CreateSubscriptionComponent)
          ],
          UnionTypeContext.new(
            is_array: true,
            is_optional: true
          )
        ),

        :CreateSubscriptionGroup2 => OneOf.new(
          [
            LeafType.new(GroupSettings),
            AnyOf.new([LeafType.new(TrueClass), LeafType.new(FalseClass)])
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :CreateSubscriptionOfferId => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Integer)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :PaymentProfileAttributesExpirationMonth => OneOf.new(
          [
            LeafType.new(Integer),
            LeafType.new(String)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :PaymentProfileAttributesExpirationYear => OneOf.new(
          [
            LeafType.new(Integer),
            LeafType.new(String)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :ReactivateSubscriptionRequestResume => OneOf.new(
          [
            AnyOf.new([LeafType.new(TrueClass), LeafType.new(FalseClass)]),
            LeafType.new(ResumeOptions)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :CreateInvoiceItemQuantity => OneOf.new(
          [
            LeafType.new(Float),
            LeafType.new(String)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :CreateInvoiceItemUnitPrice => OneOf.new(
          [
            LeafType.new(Float),
            LeafType.new(String)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :CreateInvoiceItemProductId => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Integer)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :CreateInvoiceItemComponentId => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Integer)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :CreateInvoiceItemPricePointId => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Integer)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :CreateInvoiceItemProductPricePointId => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Integer)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :RenewalPreviewComponentComponentId => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Integer)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :RenewalPreviewComponentPricePointId => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Integer)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :CreateInvoiceCouponPercentage => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Float)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :CreateInvoiceCouponAmount => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Float)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :CreateInvoiceCouponProductFamilyId => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Integer)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :CreateInvoiceCouponCompoundingStrategy => OneOf.new(
          [
            LeafType.new(CompoundingStrategy)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :DeductServiceCreditAmount => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Float)
          ]
        ),

        :UpdateSubscriptionSnapDay => OneOf.new(
          [
            LeafType.new(SnapDay),
            LeafType.new(Integer)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :UpdateSubscriptionNetTerms => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Integer)
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :IssueServiceCreditAmount => OneOf.new(
          [
            LeafType.new(Float),
            LeafType.new(String)
          ]
        ),

        :AddSubscriptionToAGroupGroup => OneOf.new(
          [
            LeafType.new(GroupSettings),
            AnyOf.new([LeafType.new(TrueClass), LeafType.new(FalseClass)])
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :CreateSubscriptionGroupSubscriptionId => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Integer)
          ]
        ),

        :CreateOrUpdateSegmentPriceUnitPrice => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Float)
          ]
        ),

        :SegmentSegmentProperty1Value => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Float),
            LeafType.new(Integer),
            AnyOf.new([LeafType.new(TrueClass), LeafType.new(FalseClass)])
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :SegmentSegmentProperty2Value => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Float),
            LeafType.new(Integer),
            AnyOf.new([LeafType.new(TrueClass), LeafType.new(FalseClass)])
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :SegmentSegmentProperty3Value => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Float),
            LeafType.new(Integer),
            AnyOf.new([LeafType.new(TrueClass), LeafType.new(FalseClass)])
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :SegmentSegmentProperty4Value => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Float),
            LeafType.new(Integer),
            AnyOf.new([LeafType.new(TrueClass), LeafType.new(FalseClass)])
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :CreateSegmentSegmentProperty1Value => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Float),
            LeafType.new(Integer),
            AnyOf.new([LeafType.new(TrueClass), LeafType.new(FalseClass)])
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :CreateSegmentSegmentProperty2Value => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Float),
            LeafType.new(Integer),
            AnyOf.new([LeafType.new(TrueClass), LeafType.new(FalseClass)])
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :CreateSegmentSegmentProperty3Value => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Float),
            LeafType.new(Integer),
            AnyOf.new([LeafType.new(TrueClass), LeafType.new(FalseClass)])
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :CreateSegmentSegmentProperty4Value => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Float),
            LeafType.new(Integer),
            AnyOf.new([LeafType.new(TrueClass), LeafType.new(FalseClass)])
          ],
          UnionTypeContext.new(
            is_optional: true
          )
        ),

        :RefundPrepaymentAmount => OneOf.new(
          [
            LeafType.new(String),
            LeafType.new(Float)
          ]
        )
      }
    end
    # rubocop:enable Lint/RedundantCopDisableDirective, Style/HashSyntax, Layout/FirstArgumentIndentation

    def self.get(name)
      UnionTypeLookUp.union_types[name]
    end
  end
end
