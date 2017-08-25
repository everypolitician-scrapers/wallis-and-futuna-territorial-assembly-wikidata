#!/bin/env ruby
# encoding: utf-8

require 'everypolitician'
require 'wikidata/fetcher'

existing = EveryPolitician::Index.new.country('Wallis-and-Futuna').lower_house.popolo.persons.map(&:wikidata).compact

names = EveryPolitician::Wikidata.wikipedia_xpath(
  url: 'https://fr.wikipedia.org/wiki/Assembl%C3%A9e_territoriale_des_%C3%AEles_Wallis_et_Futuna',
  after: '//span[@id="Composition"]',
  before: '//span[@id="Notes_et_r.C3.A9f.C3.A9rences"]',
  xpath: './/li//a[not(@class="new")]/@title'
)

EveryPolitician::Wikidata.scrape_wikidata(ids: existing, names: { fr: names })
