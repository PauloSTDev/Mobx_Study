# mobx_study

Projeto de estudos do package Mobx, State Management

Para rodar o projeto basta rodar o comando flutter pub get e flutter pub run build_runner build e rode o projeto. Caso tenha algum erro rodando o flutter pub run build_runner build, rode o comando flutter pub upgrade e tente novamente.

Pacotes e passo a passo detalhado: https://mobx.netlify.app/getting-started/

<div align="center">
  <h2> Contador de Cliques</h2>
  <img src="https://user-images.githubusercontent.com/67521304/197361467-fad122c2-059a-4c83-934b-17e428e9f132.png"/ width="250">
  <img src="https://user-images.githubusercontent.com/67521304/197361458-4bcbb3a7-8e22-4e72-a6c1-ddaa76a9773d.png"/ width="250">
  <img src="https://user-images.githubusercontent.com/67521304/197361472-beaeb1ae-448b-4755-a41c-b89fccbec04c.png"/ width="248">
</div>

## Observables

#### An Observable is used to track a single value, either primitive or complex. Whenever it changes value, it will fire a notification so that all connected reactions will re-execute.

#### - @observables

## Readonly

#### Generally speaking you want two things in your stores: reactive fields and encapsulation, readonly is a annotation which makes getters for private variables

#### - @readonly

## Computed

#### Computeds form the derived state of your application. They depend on other observables or computeds for their value. Any time the depending observables change, they will recompute their new value. Computeds are also smart and cache their previous value. Only when the computed-value is different than the cached-value, will they fire notifications. This behavior is key to ensure the connected reactions don't execute unnecessarily.

#### - @computed

## ObservableList

#### An ObservableList gives you a deeper level of observability on a list of values. It tracks when items are added, removed or modified and notifies the observers. Use an ObservableList when a change in the list matters. You can couple this with the @observable annotation to also track when the list reference changes, eg: going from null to a list with values.