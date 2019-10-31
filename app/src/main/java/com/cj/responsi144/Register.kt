package com.cj.responsi144

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import kotlinx.android.synthetic.main.activity_register.*

class Register : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_register)

        btn_selesai.setOnClickListener {
            intent = Intent (this,Account::class.java)
            intent.putExtra("nama", nama.text)
            intent.putExtra("nim", nim.text)
            startActivity(intent)
        }
    }
}
