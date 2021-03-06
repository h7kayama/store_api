# encoding : utf-8
require 'spec_helper'

describe StoreApi do
  it 'has a version number' do
    expect(StoreApi::VERSION).not_to be nil
  end

  it 'http request test' do
    extend StoreApi::Request
    host = 'play.google.com'
    path = '/store'
    html = get(host,path)
    expect(html).not_to be nil
    path = '/store/apps/collection/topselling_free'
    params = {'start' => 60,'num' => 60}
    html = post(host,path,params,true)
    expect(html).not_to be nil
  end
end
