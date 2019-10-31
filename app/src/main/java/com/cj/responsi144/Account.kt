package com.cj.responsi144

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import kotlinx.android.synthetic.main.activity_account.*

class Account : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_account)

        val bundle = intent.extras
        val nnama = bundle?.get("nama")
        val nnim = bundle?.get("nim")
        nama2.text=nnama.toString()
        nim2.text=nnim.toString()
    }
}
