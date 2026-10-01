{{/*
Common labels applied to every resource.
*/}}
{{- define "support-desk.labels" -}}
app.kubernetes.io/name: {{ .Chart.Name }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels: must stay stable across upgrades (unlike the labels above,
which can include a version that changes every release) because a
Deployment/Service selector is immutable once created.
*/}}
{{- define "support-desk.selectorLabels" -}}
app.kubernetes.io/name: {{ .Chart.Name }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}
