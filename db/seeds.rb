# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
   User.create(login:'voctor',password:'123456',password_confirmation:'123456',question_of_password:'123',answer_of_password:'123',token:nil)
                # {login:'a',password:'123456',question_of_password:'?',answer_of_password:'!',token:nil},
                # {login:'b',password:'123456',question_of_password:'?',answer_of_password:'!',token:nil},{login:'l',password_dist:'123456',question_of_password:'?',answer_of_password:'!',token:nil},
                # {login:'c',password:'123456',question_of_password:'?',answer_of_password:'!',token:nil},{login:'m',password_dist:'123456',question_of_password:'?',answer_of_password:'!',token:nil},
                # {login:'d',password:'123456',question_of_password:'?',answer_of_password:'!',token:nil},{login:'n',password_dist:'123456',question_of_password:'?',answer_of_password:'!',token:nil},
                # {login:'e',password:'123456',question_of_password:'?',answer_of_password:'!',token:nil},{login:'o',password_dist:'123456',question_of_password:'?',answer_of_password:'!',token:nil},
                # {login:'f',password:'123456',question_of_password:'?',answer_of_password:'!',token:nil},{login:'p',password_dist:'123456',question_of_password:'?',answer_of_password:'!',token:nil},
                # {login:'g',password:'123456',question_of_password:'?',answer_of_password:'!',token:nil},{login:'r',password_dist:'123456',question_of_password:'?',answer_of_password:'!',token:nil},
                # {login:'h',password_dist:'123456',question_of_password:'?',answer_of_password:'!',token:nil},{login:'s',password_dist:'123456',question_of_password:'?',answer_of_password:'!',token:nil},
                # {login:'i',password_dist:'123456',question_of_password:'?',answer_of_password:'!',token:nil},{login:'t',password_dist:'123456',question_of_password:'?',answer_of_password:'!',token:nil},
                # {login:'g',password_dist:'123456',question_of_password:'?',answer_of_password:'!',token:nil},{login:'u',password_dist:'123456',question_of_password:'?',answer_of_password:'!',token:nil},
                # {login:'k',password_dist:'123456',question_of_password:'?',answer_of_password:'!',token:nil},{login:'w',password_dist:'123456',question_of_password:'?',answer_of_password:'!',token:nil}])