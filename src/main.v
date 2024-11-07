module main

import os
import term
import rand

fn main() {
	mut n := 0
	mut cobaan := 0
	mut batas := 0
	term.clear()
	println('Level:')
	for i in 1 .. 21 {
		n = i * 500
		print(i)
		print('. ')
		println('0-${n}')
	}
	batas = os.input('Level? ').int() * 500
	angka := rand.int_in_range(0, batas) or { panic('${err}') }
	term.clear()
	for {
		tebakan := os.input('Tebak! ').int()
		cobaan++
		match true {
			tebakan < angka {
				println('Lebih besar!')
			}
			tebakan > angka {
				println('Lebih kecil!')
			}
			tebakan == angka {
				println(term.green('Benar! menggunakan ${cobaan} percobaan.'))
				break
			}
			else {
				println('Input tidak valid.')
			}
		}
	}
	println('')
	exit(0)
}
