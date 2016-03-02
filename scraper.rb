#!/bin/env ruby
# encoding: utf-8

require 'wikidata/fetcher'

names = EveryPolitician::Wikidata.morph_wikinames(source: 'tmtmtmtm/wallis-and-futuna-territorial-assembly', column: 'wikiname')
EveryPolitician::Wikidata.scrape_wikidata(names: { fr: names })
