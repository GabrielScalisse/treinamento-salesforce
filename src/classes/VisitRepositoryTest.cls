/**
  *  @author: Gabriel
  */
@isTest
private class VisitRepositoryTest {

    @isTest
    public static void findByZipCodeTest () {

        Visita__c visit = new Visita__c();
        visit.Endereco__c = 'R XXX';
        visit.Bairro__c = 'Bairro YYY';
        visit.Cep__c = '12345678';
        visit.Cidade__c = 'Cidade XXX';

        insert visit;

        VisitRepository repository = new VisitRepository();

        List<Visita__c> visits = repository.findByZipCode ('123%');

        System.assert ( !visits.isEmpty() );
        System.assertEquals ( visit.Id , visits.get(0).Id );

    }

}