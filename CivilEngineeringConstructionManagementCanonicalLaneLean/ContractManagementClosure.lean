import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringConstructionManagementCanonicalLaneLean

/-!
# Contract Management Package

This module records the contractual obligations and closure conditions for a
civil engineering construction management project. The structure follows the
admissible-class pattern: bridge and gate conditions capture contract award,
performance, completion, and dispute resolution.
-/

structure ContractPackage where
  contractAwarded : Prop
  performanceBondPosted : Prop
  milestonesMet : Prop
  changeOrdersApproved : List String
  finalCompletionCertified : Prop
  warrantyPeriodEnded : Prop
  disputesResolved : Prop
  paymentCertified : Prop

structure ContractEvidence (C : ContractPackage) where
  contractAwardedClosed : C.contractAwarded
  performanceBondPostedClosed : C.performanceBondPosted
  milestonesMetClosed : C.milestonesMet
  finalCompletionCertifiedClosed : C.finalCompletionCertified
  warrantyPeriodEndedClosed : C.warrantyPeriodEnded
  disputesResolvedClosed : C.disputesResolved
  paymentCertifiedClosed : C.paymentCertified

def ContractClosed (C : ContractPackage) : Prop :=
  C.contractAwarded ∧ C.performanceBondPosted ∧ C.milestonesMet ∧
  C.finalCompletionCertified ∧ C.warrantyPeriodEnded ∧
  C.disputesResolved ∧ C.paymentCertified

theorem contract_closed_from_evidence (C : ContractPackage) (E : ContractEvidence C) :
    ContractClosed C := by
  exact And.intro E.contractAwardedClosed
    (And.intro E.performanceBondPostedClosed
      (And.intro E.milestonesMetClosed
        (And.intro E.finalCompletionCertifiedClosed
          (And.intro E.warrantyPeriodEndedClosed
            (And.intro E.disputesResolvedClosed
              E.paymentCertifiedClosed)))))

end CivilEngineeringConstructionManagementCanonicalLaneLean
end HautevilleHouse