#!/bin/env ruby
# encoding: utf-8
class Buyer < ActiveRecord::Base

  @title='Почувствовать счастье'
  @keys='Умиротворение, доброжелательность, подавленность, психология, жить, покое, чувство пустоты, психолог, хочется любви, тепла, сигарета, утешение, полнота, энергия'
  @descr_head='Боль одиночества, внутренней пустоты и обиды мешает работать, верить в счастье, требует утешения едой, сигаретой. И хочется быть любимым, любить'

  @descr_body='Чувство подавленности, дискомфорта, заторможенности, пустоты, неудовлетворенности от пустых взаимоотношений. Хочется радости, безопасности, тепла'
  @h1='Психолог по Skype и E-mail - Хочется почувствовать радость, любовь, доброжелательность, тепло, стать счастливым'


  before_save { self.name = name.downcase }

  validates :name, presence: { message: 'Поле "E-mail" обязательно к заполнению' }

  validates :name, format: { with: /@/, message: 'Проверьте E-mail на правильность' }

  validates :name, length: { minimum: 3, message: 'Минимальная длина E-mail - 3 символа' }
  validates :name, length: { maximum: 61, message: 'Максимальная длина E-mail - 60 символов' }

end
