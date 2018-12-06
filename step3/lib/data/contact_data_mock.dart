import 'dart:async';

import 'contact_data.dart';

class MockContactRepository implements ContactRepository {

  Future<List<Contact>> fetch() {
    return Future.value(kContacts);
  }

}

const kContacts = <Contact>[
    Contact(
      fullName: 'Romain Hoogmoed',
      email:'romain.hoogmoed@example.com'
    ),
    Contact(
      fullName: 'Emilie Olsen',
      email:'emilie.olsen@example.com'
    ),
    Contact(
      fullName: 'Téo Lefevre',
      email:'téo.lefevre@example.com'
    ),
    Contact(
      fullName: 'Nicole Cruz',
      email:'nicole.cruz@example.com'
    ),
    Contact(
      fullName: 'Ramna Peixoto',
      email:'ramna.peixoto@example.com'
    ),
    Contact(
      fullName: 'Jose Ortiz',
      email:'jose.ortiz@example.com'
    ),
    Contact(
      fullName: 'Alma Christensen',
      email:'alma.christensen@example.com'
    ),
    Contact(
      fullName: 'Sergio Hill',
      email:'sergio.hill@example.com'
    ),
    Contact(
      fullName: 'Malo Gonzalez',
      email:'malo.gonzalez@example.com'
    ),
    Contact(
      fullName: 'Miguel Owens',
      email:'miguel.owens@example.com'
    ),
    Contact(
      fullName: 'Lilou Dumont',
      email:'lilou.dumont@example.com'
    ),
    Contact(
      fullName: 'Ashley Stewart',
      email:'ashley.stewart@example.com'
    ),
    Contact(
      fullName: 'Roman Zhang',
      email:'roman.zhang@example.com'
    ),
    Contact(
      fullName: 'Ryan Roberts',
      email:'ryan.roberts@example.com'
    ),
    Contact(
      fullName: 'Sadie Thomas',
      email:'sadie.thomas@example.com'
    ),
    Contact(
      fullName: 'Belen Serrano',
      email:'belen.serrano@example.com '
    )
  ];
