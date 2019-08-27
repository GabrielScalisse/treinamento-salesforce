/**
  *  @author: Gabriel
  */
public class VisitRepository {

    public list<Visita__C> findByZipCode (String zipCode) {
        return [ SELECT Id
                , Name
                , Cep__c
                , RecordType.Name
                , RecordType.DeveloperName 
                FROM Visita__C 
                WHERE Cep__c LIKE :zipCode
                LIMIT 100 ];

    }
}