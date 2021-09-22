This package integrates some functionality with the E-goi marketing automation tool

## Features

You can add contacts to the egoi list using the addContact() method

You can get contacts from your list using the getContact() method

You can update your entire contact list using the updateAllContact() method

You can update information for a specific contact using the updateContact() method

## Getting started

You just need a API Key of E-goi and your List ID

## Usage

```dart
//set your api key
Egoi egoi = Egoi(apiKey: 'YOUR_API_KEY');

// Exemple Data
var data = {
    "base": {
      "status": "active",
      "first_name": "John2",
      "last_name": "Doe2",
      "birth_date": "1975-01-10",
      "language": "en",
      "email": "example2@e-goi.com",
      "cellphone": "",
      "phone": "",
      "push_token_android": [],
      "push_token_ios": []
    }
  };

//add contact
egoi.addContact(data: data, listID: YOUR_ID);

//get contact
egoi.getContact(listID: listID, contactID: contactID);

//update all contacts
egoi.updateAllContacts(listID: listID);

//update contact
egoi.updateContact(listID: listID, contactID: contactID);

```

## Additional information

GNU GENERAL PUBLIC LICENSE
Version 2, June 1991
