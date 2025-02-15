<!--
#################################################################
#                                                               #
# Copyright (c) 2021-2022 YodaDB LLC and/or its subsidiaries.  #
# All rights reserved.                                          #
#                                                               #
#   This source code contains the intellectual property         #
#   of its copyright holder(s), and is made available           #
#   under a license.  If you do not know the terms of           #
#   the license, please stop and do not read further.           #
#                                                               #
#################################################################
-->
<template>
  <q-layout :class="$q.dark.isActive ? 'bg-banner-dark' : 'bg-banner-light'">
    <q-header
      v-if="(settingsEntered && isNotSPA) || !isNotSPA"
      elevated
      height-hint="61.59"
      :class="$q.dark.isActive ? 'text-white bg-black' : 'text-white bg-black'"
    >
      <q-toolbar class="q-py-sm q-px-md">
        <q-btn
          dense
          :ripple="true"
          style="margin-right:10px"
          :to="'/'"
          id="main-navigation-page"
        >
          <q-avatar size="42px">
            <img src="~assets/dashboard-card.png" style="background-color:white;" />
          </q-avatar>
        </q-btn>

        <div
          v-if="$q.screen.gt.xs"
          class="GL__toolbar-link q-ml-xs q-gutter-md text-body2 text-weight-bold row items-center "
        >
          <q-btn-dropdown flat :label="$t('toolbar.system_management')" dense>
            <q-list>
             <q-item clickable v-close-popup :to="'/dashboard'" dense >
                <q-item-section>
                  <q-item-label>{{$t('toolbar.dashboard')}}</q-item-label>
                </q-item-section>
              </q-item>
              <q-item clickable v-close-popup :to="'/processes'" dense >
                <q-item-section>
                  <q-item-label>{{
                    $t("toolbar.running_processes")
                  }}</q-item-label>
                </q-item-section>
              </q-item>
              <q-item clickable v-close-popup :to="'/gde'" dense  >
                {{ $t("toolbar.global_directory_editor") }}
              </q-item>
            </q-list>
          </q-btn-dropdown>
          <q-btn-dropdown flat :label="$t('toolbar.system_explorer')" dense>
            <q-list>
              <q-item clickable v-close-popup :to="'/routines'" dense>
               {{ $t("toolbar.routines") }}
              </q-item>
              <q-item clickable v-close-popup :to="'/globals'" dense>
              {{ $t("toolbar.globals") }}
              </q-item>
              <q-item clickable v-close-popup :to="'/octo-sql'" dense>
                {{ $t("toolbar.sqltables") }}
              </q-item>
            </q-list>
          </q-btn-dropdown>
           <q-btn-dropdown flat :label="$t('toolbar.documentation')" dense>
            <q-list>
              <q-item clickable dense >
                 <a href="https://aa32555.github.io/efuzy.com"> /\/\/\/\/\/\/\/\/\/\ </a>
              </q-item>
              </q-list>
          </q-btn-dropdown>
        </div>
        <q-space />
        <div class="q-pl-sm q-gutter-sm row items-center no-wrap">
          <q-select
            v-model="lang"
            :options="langOptions"
            dense
            borderless
            emit-value
            map-options
            options-dense
            label-color="white"
            style="width: 40px"
          >
            <template v-slot:selected-item="scope">
              <span class="text-white"> {{ scope.opt.label }} </span>
            </template>
          </q-select>
          <q-btn
            v-if="isNotSPA"
            dense
            flat
            round
            size="md"
            :icon="'settings'"
            @click="settingsDialog = true"
          />
          <q-btn
            dense
            flat
            round
            size="md"
            :icon="theme === 'light' ? 'wb_sunny' : 'nightlight_round'"
            @click="changeTheme"
          />
        </div>
      </q-toolbar>
    </q-header>
    <q-dialog v-model="settingsDialog" persistent>
      <q-card style="min-width: 350px">
        <img
          v-if="!$q.dark.isActive"
          alt="Quasar logo"
          src="~assets/ksa-light.webp"
          style="max-width:50vw;padding:10px"
        />
        <img
          v-if="$q.dark.isActive"
          alt="Quasar logo"
          src="~assets/ksa-dark.webp"
          style="max-width:50vw;padding:10px"
        />
        <q-card-section>
          <span>
            <q-btn
            dense
            flat
            round
            size="md"
            :icon="theme === 'light' ? 'wb_sunny' : 'nightlight_round'"
            @click="changeTheme"
          />

<pre>
    𓄿 <a href="http://www.YodaDB.com">http://www.YodaDB.com</a>
    𓄿 <a href="https://www.github.com/aa32555">https://www.github.com/aa32555</a>
    𓄿 <a href="https://paypal.me/asolok?country.x=US&locale.x=en_US">!Buy me coffee! I'm homeless,<br> ask Sam and Bhaskar of YottaDB. Why ?  </a>
</pre></span>
          <div></div>
        </q-card-section>

        <q-card-section class="q-pt-none">
          <q-input
            v-model="ip"
            outlined
            label="IP*"
            :dense="true"
            hint="Server IP. e.g. 192.168.1.5"
            :rules="[
              val => ValidateIPaddress(val) || 'Please type a valid IP!'
            ]"
          />
        </q-card-section>
        <q-card-section class="q-pt-none">
          <q-input
            v-model="port"
            outlined
            label="Port*"
            :dense="true"
            hint="Server port. e.g. 8089"
            :rules="[
              val =>
                (parseInt(val) > 0 && parseInt(val) < 999999) ||
                'Please type a valid Port!'
            ]"
          />
        </q-card-section>
        <q-card-section class="q-pt-none">
          <q-select
            outlined
            :options="['http', 'https']"
            label="Protocol*"
            v-model="protocol"
            :dense="true"
            :hint="'Connection protocol'"
          />
        </q-card-section>

        <q-card-actions align="right" class="text-success">
          <q-btn
            flat
            :disable="checkingConnection"
            :label="checkingConnection ? 'Checking connection...' : 'OK'"
            @click="setSettings"
            @key.enter="setSettings"
          />
        </q-card-actions>
      </q-card>
    </q-dialog>
    <q-page-container v-if="(settingsEntered && isNotSPA) || !isNotSPA">
      <router-view />
    </q-page-container>
  </q-layout>
</template>

<script>
export default {
  name: "MyLayout",
  data() {
    return {
      checkingConnection: false,
      settingsDialog: false,
      ip: "",
      protocol: "http",
      port: "",
      theme: "light",
      lang: this.$i18n.locale || "en-us",
      //lang: "en-us",
      langOptions: [
        { value: "en-us", label: "EN" },
        { value: "ar", label: "AR" }
      ],
      settingsEntered: false
    };
  },
  mounted() {
    if (this.$i18n.locale !== "en-us" && this.$i18n.locale !=='ar') {
      this.lang = "en-us";
    }
  },
  created() {
    this.theme = this.$q.localStorage.getItem("ydb-app-theme") || "dark";
    if (this.theme === "dark") {
      this.$q.dark.set(true);
    } else {
      this.$q.dark.set(false);
    }
    if (
      this.$q.localStorage.getItem("ydb-app-ip") &&
      this.$q.localStorage.getItem("ydb-app-port") &&
      this.$q.localStorage.getItem("ydb-app-protocol")
    ) {
      this.ip = this.$q.localStorage.getItem("ydb-app-ip");
      this.port = this.$q.localStorage.getItem("ydb-app-port");
      this.protocol = this.$q.localStorage.getItem("ydb-app-protocol");
      let details = {
        ip: this.ip,
        port: this.port,
        protocol: this.protocol
      };
      this.$store.dispatch("app/setAppDetails", details);
      this.settingsEntered = true;
    } else if (this.isNotSPA) {
      setTimeout(() => {
        this.settingsDialog = true;
      }, 1000);
    }
  },
  methods: {
    async setSettings() {
      if (this.port && this.ip && this.protocol) {
        let details = {
          ip: this.ip,
          port: this.port,
          protocol: this.protocol
        };
        this.$q.localStorage.set("ydb-app-ip", this.ip);
        this.$q.localStorage.set("ydb-app-port", this.port);
        this.$q.localStorage.set("ydb-app-protocol", this.protocol);
        this.$store.dispatch("app/setAppDetails", details);
        this.checkingConnection = true;
        let data = await this.$M("PING^%YDBWEBAPI");
        if (!data || !data.RESULT || data.RESULT !== "PONG") {
          this.checkingConnection = false;
          this.$q.notify({
            message: "Connection failed!",
            color: "negative"
          });
          let details = {
            ip: "",
            port: "",
            protocol: ""
          };
          this.$q.localStorage.set("ydb-app-ip", "");
          this.$q.localStorage.set("ydb-app-port", "");
          this.$q.localStorage.set("ydb-app-protocol", "");
          this.$store.dispatch("app/setAppDetails", details);
          return;
        } else {
          this.checkingConnection = false;
          this.$q.notify({
            message: "Connection succeeded!",
            color: "positive"
          });
        }
      } else {
        this.$q.notify({
          message:
            "Please enter the IP, Port and Protocol to connect to the server",
          color: "negative"
        });
        return;
        /*
        this.port = '',
        this.protocol = '',
        this.ip = ''
        this.$q.localStorage.set('ydb-app-ip', '')
        this.$q.localStorage.set('ydb-app-port', '')
        this.$q.localStorage.set('ydb-app-protocol', '')
      */
      }
      this.settingsDialog = false;
      location.reload(true);
    },
    ValidateIPaddress(ipaddress) {
      if (ipaddress === "localhost") {
        return true;
      } else if (
        /^(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$/.test(
          ipaddress
        )
      ) {
        return true;
      } else {
        return false;
      }
    },
    changeTheme() {
      if (this.theme === "light") {
        this.$q.dark.set(true);
        this.theme = "dark";
      } else {
        this.$q.dark.set(false);
        this.theme = "light";
      }
      this.$q.localStorage.set("ydb-app-theme", this.theme);
    }
  },
  watch: {
    lang(lang) {
      this.$i18n.locale = lang;
    }
  },
  computed: {
    isNotSPA() {
      return true;
      //return process.env.MODE !== "spa";
    }
  }
};
</script>

<style lang="sass">
.GL
  &__select-GL__menu-link
    .default-type
      visibility: hidden
    &:hover
      background: green
      color: white
      .q-item__section--side
        color: white
      .default-type
        visibility: visible
  &__toolbar-link
    a
      color: white
      text-decoration: none
      &:hover
        opacity: 0.7
  &__menu-link:hover
    background: green
    color: white
  &__menu-link-signed-in,
  &__menu-link-status
    &:hover
      & > div
        background: white !important
  &__menu-link-status
    color: $blue-grey-6
    &:hover
      color: $light-blue-9
  &__toolbar-select.q-field--focused
    width: 450px !important
    .q-field__append
      display: none
</style>
<style scoped>
.rotating {
  transition: transform 1s ease-in-out;
}
.rotating:hover {
  transform: rotateZ(360deg);
}
.bg-banner-light {
  background-image: url(ksa-light.webp);
  background-size: cover;
}
.bg-banner-dark {
  background-image: url(ksa-dark.webp);
  background-size: cover;
}
</style>
