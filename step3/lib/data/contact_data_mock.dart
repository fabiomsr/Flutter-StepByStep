
import 'dart:async';

import 'contact_data.dart';

class MockContactRepository implements ContactRepository{

  Future<List<Contact>> fetch(){
    return new Future.value(kContacts);
  }

}


const kContacts = const <Contact>[
    const Contact(
      fullName: 'Romain Hoogmoed',
      email:'romain.hoogmoed@example.com'
    ),
    const Contact(
      fullName: 'Emilie Olsen',
      email:'emilie.olsen@example.com'
    ),
    const Contact(
      fullName: 'Téo Lefevre',
      email:'téo.lefevre@example.com'
    ),
    const Contact(
      fullName: 'Nicole Cruz',
      email:'nicole.cruz@example.com'
    ),
    const Contact(
      fullName: 'Ramna Peixoto',
      email:'ramna.peixoto@example.com'
    ),
    const Contact(
      fullName: 'Jose Ortiz',
      email:'jose.ortiz@example.com'
    ),
    const Contact(
      fullName: 'Alma Christensen',
      email:'alma.christensen@example.com'
    ),
    const Contact(
      fullName: 'Sergio Hill',
      email:'sergio.hill@example.com'
    ),
    const Contact(
      fullName: 'Malo Gonzalez',
      email:'malo.gonzalez@example.com'
    ),
    const Contact(
      fullName: 'Miguel Owens',
      email:'miguel.owens@example.com'
    ),
    const Contact(
      fullName: 'Lilou Dumont',
      email:'lilou.dumont@example.com'
    ),
    const Contact(
      fullName: 'Ashley Stewart',
      email:'ashley.stewart@example.com'
    ),
    const Contact(
      fullName: 'Roman Zhang',
      email:'roman.zhang@example.com'
    ),
    const Contact(
      fullName: 'Ryan Roberts',
      email:'ryan.roberts@example.com'
    ),
    const Contact(
      fullName: 'Sadie Thomas',
      email:'sadie.thomas@example.com'
    ),
    const Contact(
      fullName: 'Belen Serrano',
      email:'belen.serrano@example.com '
    )
  ];
