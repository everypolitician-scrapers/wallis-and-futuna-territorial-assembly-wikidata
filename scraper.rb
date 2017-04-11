#!/bin/env ruby
# encoding: utf-8

require 'wikidata/fetcher'

names = EveryPolitician::Wikidata.wikipedia_xpath(
  url: "https://fr.wikipedia.org/wiki/Assembl%C3%A9e_territoriale_des_%C3%AEles_Wallis_et_Futuna",
  after: '//span[@id="Composition"]',
  before: '//span[@id="Ancien_.C3.A9lu_de_2012_.C3.A0_2013"]',
  xpath: './/li//a[not(@class="new")]/@title',
)

EveryPolitician::Wikidata.scrape_wikidata(names: { fr: names })

