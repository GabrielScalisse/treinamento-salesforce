/**
  *  @author: Gabriel
  */
@isTest
private class VisitRepositoryTest {

    @isTest
    public static void findByZipCodeTest () {

        Account account = AccountFixtureFactory.create('bisso');

        Visita__c visit = VisitFixtureFactory.create(account, '12345678');

        VisitRepository repository = new VisitRepository();

        List<Visita__c> visits = repository.findByZipCode ('123%');

        System.assert ( !visits.isEmpty() );
        System.assertEquals ( visit.Id , visits.get(0).Id );

    }

    @isTest
    public static void notfindByZipCodeTest () {

        Visita__c visit = VisitFixtureFactory.create('12245678');

        VisitRepository repository = new VisitRepository();

        List<Visita__c> visits = repository.findByZipCode ('123%');

        System.assert ( visits.isEmpty() );
    }

}